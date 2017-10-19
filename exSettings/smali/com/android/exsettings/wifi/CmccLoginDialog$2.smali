.class Lcom/android/exsettings/wifi/CmccLoginDialog$2;
.super Ljava/lang/Object;
.source "CmccLoginDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/wifi/CmccLoginDialog;->onCreate(Landroid/os/Bundle;)V
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
    .line 101
    iput-object p1, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$2;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 106
    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$2;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mUsernameView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$300(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "userName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$2;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    # getter for: Lcom/android/exsettings/wifi/CmccLoginDialog;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$400(Lcom/android/exsettings/wifi/CmccLoginDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "password":Ljava/lang/String;
    const-string v2, "CmccLoginDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The ssid is : CMCC-WEB ; username is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; password is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v2, p0, Lcom/android/exsettings/wifi/CmccLoginDialog$2;->this$0:Lcom/android/exsettings/wifi/CmccLoginDialog;

    const-string v3, "CMCC-WEB"

    const/4 v4, 0x0

    # invokes: Lcom/android/exsettings/wifi/CmccLoginDialog;->doLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1, v0, v4}, Lcom/android/exsettings/wifi/CmccLoginDialog;->access$500(Lcom/android/exsettings/wifi/CmccLoginDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    return-void
.end method
