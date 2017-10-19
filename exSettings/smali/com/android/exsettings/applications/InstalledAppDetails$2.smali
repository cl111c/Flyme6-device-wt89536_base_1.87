.class Lcom/android/exsettings/applications/InstalledAppDetails$2;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/InstalledAppDetails;->createDialog(II)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/exsettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails$2;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    iget-object v1, v1, Lcom/android/exsettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/exsettingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    # invokes: Lcom/android/exsettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/exsettings/applications/InstalledAppDetails;->access$200(Lcom/android/exsettings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V

    .line 602
    return-void
.end method
