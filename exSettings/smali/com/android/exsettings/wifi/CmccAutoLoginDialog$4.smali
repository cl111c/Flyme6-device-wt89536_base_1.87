.class Lcom/android/exsettings/wifi/CmccAutoLoginDialog$4;
.super Ljava/lang/Object;
.source "CmccAutoLoginDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 158
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mUsernameView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->access$300(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->access$400(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "cmcc_auto_account_number_recode"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "storedName":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->access$400(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "cmcc_auto_pw_recode"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->access$500(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)Landroid/widget/EditText;

    move-result-object v3

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 163
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->access$500(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .end local v1    # "password":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mUsernameView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->access$300(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    invoke-virtual {v3, v6}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    :goto_1
    return-void

    .line 165
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->access$500(Lcom/android/exsettings/wifi/CmccAutoLoginDialog;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccAutoLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccAutoLoginDialog;

    invoke-virtual {v3, v6}, Lcom/android/exsettings/wifi/CmccAutoLoginDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method
