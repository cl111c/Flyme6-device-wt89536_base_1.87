.class Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterSyncStateClickListener"
.end annotation


# instance fields
.field private final mUserHandle:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/exsettings/accounts/AccountSettings;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/accounts/AccountSettings;Landroid/os/UserHandle;)V
    .locals 0
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/exsettings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    iput-object p2, p0, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;->mUserHandle:Landroid/os/UserHandle;

    .line 646
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 650
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    const-string v0, "AccountSettings"

    const-string v2, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_0
    :goto_0
    return v1

    .line 656
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 658
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/exsettings/accounts/AccountSettings;

    # getter for: Lcom/android/exsettings/accounts/AccountSettings;->mAutoSync:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/exsettings/accounts/AccountSettings;->access$700(Lcom/android/exsettings/accounts/AccountSettings;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/exsettings/accounts/AccountSettings$MasterSyncStateClickListener;->this$0:Lcom/android/exsettings/accounts/AccountSettings;

    # getter for: Lcom/android/exsettings/accounts/AccountSettings;->mAutoSync:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/exsettings/accounts/AccountSettings;->access$700(Lcom/android/exsettings/accounts/AccountSettings;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v1

    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v0, v2

    .line 656
    goto :goto_1
.end method
