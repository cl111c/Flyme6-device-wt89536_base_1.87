.class Lcom/android/exsettings/accounts/AccountSyncSettings$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/accounts/AccountSyncSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/accounts/AccountSyncSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/accounts/AccountSyncSettings;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/exsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/exsettings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/exsettings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 99
    .local v2, "activity":Landroid/app/Activity;
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/exsettings/accounts/AccountSyncSettings;

    # getter for: Lcom/android/exsettings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/android/exsettings/accounts/AccountSyncSettings;->access$000(Lcom/android/exsettings/accounts/AccountSyncSettings;)Landroid/accounts/Account;

    move-result-object v1

    new-instance v3, Lcom/android/exsettings/accounts/AccountSyncSettings$1$1;

    invoke-direct {v3, p0}, Lcom/android/exsettings/accounts/AccountSyncSettings$1$1;-><init>(Lcom/android/exsettings/accounts/AccountSyncSettings$1;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exsettings/accounts/AccountSyncSettings$1;->this$0:Lcom/android/exsettings/accounts/AccountSyncSettings;

    iget-object v5, v5, Lcom/android/exsettings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    .line 129
    return-void
.end method
