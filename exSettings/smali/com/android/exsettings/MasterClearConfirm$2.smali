.class Lcom/android/exsettings/MasterClearConfirm$2;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/MasterClearConfirm;


# direct methods
.method constructor <init>(Lcom/android/exsettings/MasterClearConfirm;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/exsettings/MasterClearConfirm$2;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/exsettings/MasterClearConfirm$2;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/MasterClearConfirm$2;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/exsettings/MasterClearConfirm$2;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 150
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm$2;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 151
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm$2;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c04b2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm$2;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c04b3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 157
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-static {}, Lcom/android/exsettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm$2;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "persistent_data_block"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 110
    .local v0, "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm$2;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    new-instance v1, Lcom/android/exsettings/MasterClearConfirm$2$1;

    invoke-direct {v1, p0, v0}, Lcom/android/exsettings/MasterClearConfirm$2$1;-><init>(Lcom/android/exsettings/MasterClearConfirm$2;Landroid/service/persistentdata/PersistentDataBlockManager;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/MasterClearConfirm$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm$2;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    # invokes: Lcom/android/exsettings/MasterClearConfirm;->doMasterClear()V
    invoke-static {v1}, Lcom/android/exsettings/MasterClearConfirm;->access$300(Lcom/android/exsettings/MasterClearConfirm;)V

    goto :goto_0
.end method
