.class Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsLoader$1;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsLoader;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsLoader;


# direct methods
.method constructor <init>(Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsLoader;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsLoader$1;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 1
    .param p1, "printJobId"    # Landroid/print/PrintJobId;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsLoader$1;->this$0:Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsLoader;

    # invokes: Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsLoader;->onForceLoad()V
    invoke-static {v0}, Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsLoader;->access$500(Lcom/android/exsettings/print/PrintSettingsFragment$PrintJobsLoader;)V

    .line 548
    return-void
.end method
