.class Lcom/android/server/policy/GlobalActions$14;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    .prologue
    .line 1349
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1351
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1366
    :cond_0
    :goto_0
    return-void

    .line 1353
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialogN2;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialogN2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialogN2;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialogN2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialogN2;->dismiss()V

    .line 1355
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialogN2;
    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->access$1602(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialogN2;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialogN2;

    goto :goto_0

    .line 1359
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->refreshSilentMode()V
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$2000(Lcom/android/server/policy/GlobalActions;)V

    .line 1360
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$800(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1363
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->handleShow()V
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$2100(Lcom/android/server/policy/GlobalActions;)V

    goto :goto_0

    .line 1351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
