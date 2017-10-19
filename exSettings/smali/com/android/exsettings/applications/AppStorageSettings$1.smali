.class Lcom/android/exsettings/applications/AppStorageSettings$1;
.super Ljava/lang/Object;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/AppStorageSettings;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/AppStorageSettings;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/exsettings/applications/AppStorageSettings$1;->this$0:Lcom/android/exsettings/applications/AppStorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/exsettings/applications/AppStorageSettings$1;->this$0:Lcom/android/exsettings/applications/AppStorageSettings;

    iget-object v0, v0, Lcom/android/exsettings/applications/AppStorageSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/exsettings/applications/AppStorageSettings$1;->this$0:Lcom/android/exsettings/applications/AppStorageSettings;

    iget-object v1, v1, Lcom/android/exsettings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/exsettings/applications/AppStorageSettings$1;->this$0:Lcom/android/exsettings/applications/AppStorageSettings;

    # getter for: Lcom/android/exsettings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/exsettings/applications/AppStorageSettings$ClearCacheObserver;
    invoke-static {v2}, Lcom/android/exsettings/applications/AppStorageSettings;->access$000(Lcom/android/exsettings/applications/AppStorageSettings;)Lcom/android/exsettings/applications/AppStorageSettings$ClearCacheObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 184
    return-void
.end method
