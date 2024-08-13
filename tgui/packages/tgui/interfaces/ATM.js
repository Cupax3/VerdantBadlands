import { useBackend } from '../backend';
import { Button, Section, Flex, Box } from '../components';
import { Window } from '../layouts';

export const ATM = (props, context) => {
  const { act, data } = useBackend(context);
  const {
    debug,
  } = data;

  return (
    <Window
      title="ATM"
      width={360}
      height={240}>
      <Window.Content>
      "hi"
      {debug}
      <Button
        icon="plus"
        fluid
        bold
        content={"create_account"}
        color={"purple"}
        onClick={() => act("create_account")} />
      </Window.Content>
    </Window>
  );
};
