.class Lcom/android/server/PermissionDialog$1;
.super Landroid/os/Handler;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/PermissionDialog;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "mess"    # Landroid/os/Message;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->checkSta:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$000(Lcom/android/server/PermissionDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 103
    .local v5, "keepIt":Z
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 111
    :pswitch_0
    const/4 v4, 0x1

    .line 112
    .local v4, "runSet":I
    const/4 v5, 0x0

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->opsServ:Lcom/android/server/AppOpsService;
    invoke-static {v0}, Lcom/android/server/PermissionDialog;->access$400(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->mDef:I
    invoke-static {v1}, Lcom/android/server/PermissionDialog;->access$100(Lcom/android/server/PermissionDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->inputId:I
    invoke-static {v2}, Lcom/android/server/PermissionDialog;->access$200(Lcom/android/server/PermissionDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    # getter for: Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/PermissionDialog;->access$300(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AppOpsService;->notifyOperation(IILjava/lang/String;IZ)V

    .line 115
    iget-object v0, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/PermissionDialog;->dismiss()V

    .line 116
    return-void

    .line 105
    .end local v4    # "runSet":I
    :pswitch_1
    const/4 v4, 0x0

    .line 106
    .restart local v4    # "runSet":I
    goto :goto_0

    .line 108
    .end local v4    # "runSet":I
    :pswitch_2
    const/4 v4, 0x1

    .line 109
    .restart local v4    # "runSet":I
    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
