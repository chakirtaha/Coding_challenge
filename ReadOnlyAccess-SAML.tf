module "iam_assumable_role_with_saml" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role-with-saml"
  version = "~> 3.0"

  create_role = true

  role_name = "READ_ONLY_ACCESS"
  role_requires_mfa = false


  tags = {
    Role = "role-with-saml"
  }

  provider_id = "arn:aws:iam::235367859851:saml-provider/idp_saml"

  role_policy_arns = [
    "arn:aws:iam::aws:policy/ReadOnlyAccess"
  ]
  number_of_role_policy_arns = 1
}
