module.exports = ({github, context, core}) => {
    console.log(github, context);
    if (context.head_ref !== 'next' && context.head_ref.startsWith('hotfix')) {
        core.setFailed(`Merge requests to main branch are only allowed from next branch or branches with a name that starts with hotfix`);
    }
    core.info('Source is OK')
}
