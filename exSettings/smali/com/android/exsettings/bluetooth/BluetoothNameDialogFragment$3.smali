.class Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment$3;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 147
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 148
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;->access$000(Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;

    # getter for: Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;->access$100(Lcom/android/exsettings/bluetooth/BluetoothNameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 153
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
