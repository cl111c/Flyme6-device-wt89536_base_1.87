.class Lcom/android/exsettings/wifi/CmccLoginDialog$4;
.super Ljava/lang/Object;
.source "CmccLoginDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/CmccLoginDialog;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;


# direct methods
.method constructor <init>(Lcom/android/exsettings/wifi/CmccLoginDialog;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 168
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mUsernameView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$300(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$600(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "cmcc_account_number_recode"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
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

    .line 171
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mCmccInfo:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$600(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "cmcc_pw_recode"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$400(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/widget/EditText;

    move-result-object v3

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 173
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$400(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .end local v1    # "password":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mUsernameView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$300(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    invoke-virtual {v3, v6}, Lcom/android/exsettings/wifi/CmccLoginDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    :goto_1
    return-void

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$400(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/widget/EditText;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$4;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    invoke-virtual {v3, v6}, Lcom/android/exsettings/wifi/CmccLoginDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method
