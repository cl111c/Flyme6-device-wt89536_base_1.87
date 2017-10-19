.class Lcom/android/exsettings/MasterClearConfirm$2$1;
.super Landroid/os/AsyncTask;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/MasterClearConfirm$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mOldOrientation:I

.field mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$1:Lcom/android/exsettings/MasterClearConfirm$2;

.field final synthetic val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;


# direct methods
.method constructor <init>(Lcom/android/exsettings/MasterClearConfirm$2;Landroid/service/persistentdata/PersistentDataBlockManager;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/exsettings/MasterClearConfirm$2$1;->this$1:Lcom/android/exsettings/MasterClearConfirm$2;

    iput-object p2, p0, Lcom/android/exsettings/MasterClearConfirm$2$1;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/MasterClearConfirm$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm$2$1;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 116
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/MasterClearConfirm$2$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm$2$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 129
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm$2$1;->this$1:Lcom/android/exsettings/MasterClearConfirm$2;

    iget-object v0, v0, Lcom/android/exsettings/MasterClearConfirm$2;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/exsettings/MasterClearConfirm$2$1;->mOldOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 130
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm$2$1;->this$1:Lcom/android/exsettings/MasterClearConfirm$2;

    iget-object v0, v0, Lcom/android/exsettings/MasterClearConfirm$2;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    # invokes: Lcom/android/exsettings/MasterClearConfirm;->doMasterClear()V
    invoke-static {v0}, Lcom/android/exsettings/MasterClearConfirm;->access$300(Lcom/android/exsettings/MasterClearConfirm;)V

    .line 131
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm$2$1;->this$1:Lcom/android/exsettings/MasterClearConfirm$2;

    # invokes: Lcom/android/exsettings/MasterClearConfirm$2;->getProgressDialog()Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/exsettings/MasterClearConfirm$2;->access$400(Lcom/android/exsettings/MasterClearConfirm$2;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/MasterClearConfirm$2$1;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 136
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm$2$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 140
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm$2$1;->this$1:Lcom/android/exsettings/MasterClearConfirm$2;

    iget-object v0, v0, Lcom/android/exsettings/MasterClearConfirm$2;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/exsettings/MasterClearConfirm$2$1;->mOldOrientation:I

    .line 141
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm$2$1;->this$1:Lcom/android/exsettings/MasterClearConfirm$2;

    iget-object v0, v0, Lcom/android/exsettings/MasterClearConfirm$2;->this$0:Lcom/android/exsettings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 142
    return-void
.end method
