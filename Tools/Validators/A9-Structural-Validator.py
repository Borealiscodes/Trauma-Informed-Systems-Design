# TISD-A9 Structural Validator Harness (Safe, Metadata-Only)
# NDH-RESEARCH-PILOT • Non-Activating • No Harm Math

import json
from pathlib import Path

APPENDICES = ["A1", "A2", "A3", "A4", "A5", "A6", "A7"]

EXPECTED_MAP = {
    "A1": ["ontology", "algebra"],
    "A2": ["phase_space", "dynamics"],
    "A3": ["phase_space", "calculus"],
    "A4": ["dynamics", "trajectories"],
    "A5": ["algebra", "calculus"],
    "A6": ["topology", "synthesis"],
    "A7": ["phase_space", "transitions"]
}

FORBIDDEN = [
    "tensor", "holonomy_bundle", "nondual", "star12_thaw",
    "phase12_bypass", "ndh_manifold", "harm_compute",
    "harm_simulate", "harm_propagate"
]

def load_metadata(path):
    try:
        return json.loads(Path(path).read_text())
    except Exception:
        return {}

def check_forbidden(text):
    return [f for f in FORBIDDEN if f in text.lower()]

def validate_appendix(name, metadata):
    issues = []

    # Check expected Omnibus layer mapping
    layers = metadata.get("omnibus_layers", [])
    expected = EXPECTED_MAP[name]
    if not all(layer in layers for layer in expected):
        issues.append(f"Layer mismatch in {name}")

    # Check for forbidden constructs
    forbidden_hits = check_forbidden(json.dumps(metadata))
    if forbidden_hits:
        issues.append(f"Forbidden constructs in {name}: {forbidden_hits}")

    return issues

def run_validation():
    report = {}
    for appendix in APPENDICES:
        metadata_path = f"./metadata/{appendix}.json"
        metadata = load_metadata(metadata_path)
        report[appendix] = validate_appendix(appendix, metadata)
    return report

if __name__ == "__main__":
    result = run_validation()
    print(json.dumps(result, indent=2))
