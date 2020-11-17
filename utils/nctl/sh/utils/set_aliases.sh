# Assets.
alias nctl-assets-dump='source $NCTL/sh/assets/dump.sh'
alias nctl-assets-ls='source $NCTL/sh/assets/list.sh'
alias nctl-assets-setup='source $NCTL/sh/assets/setup.sh'
alias nctl-assets-teardown='source $NCTL/sh/assets/teardown.sh'

# Binaries.
alias nctl-compile='source $NCTL/sh/compile/all.sh'
alias nctl-compile-client='source $NCTL/sh/compile/client.sh'
alias nctl-compile-node='source $NCTL/sh/compile/node.sh'

# Node control.
alias nctl-down='source $NCTL/sh/node/stop.sh'
alias nctl-interactive='source $NCTL/sh/node/interactive.sh'
alias nctl-log-reset='source $NCTL/sh/node/log_reset.sh'
alias nctl-restart='source $NCTL/sh/node/restart.sh'
alias nctl-start='source $NCTL/sh/node/start.sh'
alias nctl-status='source $NCTL/sh/node/status.sh'
alias nctl-stop='source $NCTL/sh/node/stop.sh'
alias nctl-toggle='source $NCTL/sh/node/toggle.sh'
alias nctl-up='source $NCTL/sh/node/start.sh'

# Views #1: chain.
alias nctl-view-chain-account='source $NCTL/sh/views/view_chain_account.sh'
alias nctl-view-chain-account-balance='source $NCTL/sh/views/view_chain_account_balance.sh'
alias nctl-view-chain-auction-info='source $NCTL/sh/views/view_chain_auction_info.sh'
alias nctl-view-chain-block='source $NCTL/sh/views/view_chain_block.sh'
alias nctl-view-chain-deploy='source $NCTL/sh/views/view_chain_deploy.sh'
alias nctl-view-chain-state-root-hash='source $NCTL/sh/views/view_chain_state_root_hash.sh'
alias nctl-view-chain-spec='source $NCTL/sh/views/view_chain_spec.sh'
alias nctl-view-chain-spec-accounts='source $NCTL/sh/views/view_chain_spec_accounts.sh'

# Views #2: node.
alias nctl-view-node-config='source $NCTL/sh/views/view_node_config.sh'
alias nctl-view-node-log='source $NCTL/sh/views/view_node_log.sh'
alias nctl-view-node-peers='source $NCTL/sh/views/view_node_peers.sh'
alias nctl-view-node-status='source $NCTL/sh/views/view_node_status.sh'
alias nctl-view-node-storage='source $NCTL/sh/views/view_node_storage.sh'

# Views #3: node metrcs.
alias nctl-view-node-metrics='source $NCTL/sh/views/view_node_metrics.sh'
alias nctl-view-node-pending-deploy-count='source $NCTL/sh/views/view_node_metrics.sh metric=pending_deploy'
alias nctl-view-node-finalised-block-count='source $NCTL/sh/views/view_node_metrics.sh metric=amount_of_blocks'

# Views #4: faucet.
alias nctl-view-faucet-account='source $NCTL/sh/views/view_faucet_account.sh'
alias nctl-view-faucet-account-balance='source $NCTL/sh/views/view_faucet_account_balance.sh'
alias nctl-view-faucet-account-hash='source $NCTL/sh/views/view_faucet_account_hash.sh'
alias nctl-view-faucet-account-key='source $NCTL/sh/views/view_faucet_account_key.sh'
alias nctl-view-faucet-secret-key-path='source $NCTL/sh/views/view_faucet_secret_key_path.sh'

# Views #5: user.
alias nctl-view-user-account='source $NCTL/sh/views/view_user_account.sh'
alias nctl-view-user-account-balance='source $NCTL/sh/views/view_user_account_balance.sh'
alias nctl-view-user-account-hash='source $NCTL/sh/views/view_user_account_hash.sh'
alias nctl-view-user-account-key='source $NCTL/sh/views/view_user_account_key.sh'
alias nctl-view-user-secret-key-path='source $NCTL/sh/views/view_user_secret_key_path.sh'

# Views #6: validator.
alias nctl-view-validator-account='source $NCTL/sh/views/view_validator_account.sh'
alias nctl-view-validator-account-balance='source $NCTL/sh/views/view_validator_account_balance.sh'
alias nctl-view-validator-account-hash='source $NCTL/sh/views/view_validator_account_hash.sh'
alias nctl-view-validator-account-key='source $NCTL/sh/views/view_validator_account_key.sh'
alias nctl-view-validator-secret-key-path='source $NCTL/sh/views/view_validator_secret_key_path.sh'

# Contracts #1: Transfers.
alias nctl-do-transfer='source $NCTL/sh/generators/wg_100.sh'
alias nctl-do-transfer-wasm='source $NCTL/sh/generators/wg_110.sh'
alias nctl-do-fund-users='source $NCTL/sh/generators/wg_101.sh'

# Contracts #2: Auction.
alias nctl-do-auction-bid='source $NCTL/sh/contracts/auction/bid.sh'
alias nctl-do-auction-withdraw='source $NCTL/sh/contracts/auction/bid_withdraw.sh'
alias nctl-do-auction-delegate='source $NCTL/sh/contracts/auction/delegate.sh'
alias nctl-do-auction-undelegate='source $NCTL/sh/contracts/auction/delegate_withdraw.sh'

# Contracts #3: ERC-20.
alias nctl-erc20-do-approve='source $NCTL/sh/contracts/erc20/do_approve.sh'
alias nctl-erc20-do-install='source $NCTL/sh/contracts/erc20/do_install.sh'
alias nctl-erc20-do-fund-users='source $NCTL/sh/contracts/erc20/do_fund_users.sh'
alias nctl-erc20-do-transfer='source $NCTL/sh/contracts/erc20/do_transfer.sh'
alias nctl-erc20-view-details='source $NCTL/sh/contracts/erc20/view_details.sh'
alias nctl-erc20-view-balances='source $NCTL/sh/contracts/erc20/view_balances.sh'
