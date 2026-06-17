# nfw-templates

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![Buy A Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-ffdd00?logo=buy-me-a-coffee&logoColor=black&style=flat)](https://ahmetcetinkaya.me/donate)

NFramework Generators for the `nfw` CLI toolchain. Templates use Tera for rendering and are consumed by the [nfw CLI](../nfw).

---

## Templates

| Identifier        | Display Name                      | Description                                                    |
| ----------------- | --------------------------------- | -------------------------------------------------------------- |
| `blank-workspace` | Blank Workspace                   | Minimal starter workspace                                      |
| `dotnet-service`  | .NET Service (Clean Architecture) | .NET service with Domain/Application/Infrastructure/Api layers |

---

## Usage

Templates are resolved by the `nfw` CLI. See the [nfw CLI README](../nfw) for details.

```bash
# List templates
nfw templates

# Create a workspace from a template
nfw new my-workspace --template blank-workspace
```

---

## 📄 License

This project is licensed under the **Apache License 2.0** - see the [LICENSE](LICENSE) file for details.
