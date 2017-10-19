.class Lcom/android/exsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;
.super Landroid/os/AsyncTask;
.source "AdvancedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/AdvancedAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountAppsWithOverlayPermission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/exsettings/applications/AppStateOverlayBridge;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field numOfPackagesRequestedPermission:I

.field final synthetic this$0:Lcom/android/exsettings/applications/AdvancedAppSettings;


# virtual methods
.method protected varargs doInBackground([Lcom/android/exsettings/applications/AppStateOverlayBridge;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Lcom/android/exsettings/applications/AppStateOverlayBridge;

    .prologue
    .line 150
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 151
    .local v0, "overlayBridge":Lcom/android/exsettings/applications/AppStateOverlayBridge;
    invoke-virtual {v0}, Lcom/android/exsettings/applications/AppStateOverlayBridge;->getNumberOfPackagesWithPermission()I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->numOfPackagesRequestedPermission:I

    .line 153
    invoke-virtual {v0}, Lcom/android/exsettings/applications/AppStateOverlayBridge;->getNumberOfPackagesCanDrawOverlay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    check-cast p1, [Lcom/android/exsettings/applications/AppStateOverlayBridge;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->doInBackground([Lcom/android/exsettings/applications/AppStateOverlayBridge;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/exsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->this$0:Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-virtual {v0}, Lcom/android/exsettings/applications/AdvancedAppSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/exsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->this$0:Lcom/android/exsettings/applications/AdvancedAppSettings;

    # getter for: Lcom/android/exsettings/applications/AdvancedAppSettings;->mSystemAlertWindowPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/exsettings/applications/AdvancedAppSettings;->access$200(Lcom/android/exsettings/applications/AdvancedAppSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->this$0:Lcom/android/exsettings/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/AdvancedAppSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0b59

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/exsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->numOfPackagesRequestedPermission:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 164
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/applications/AdvancedAppSettings$CountAppsWithOverlayPermission;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
