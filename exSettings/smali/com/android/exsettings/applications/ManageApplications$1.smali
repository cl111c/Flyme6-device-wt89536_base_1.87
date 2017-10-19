.class Lcom/android/exsettings/applications/ManageApplications$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/applications/ManageApplications;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/ManageApplications;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/exsettings/applications/ManageApplications$1;->this$0:Lcom/android/exsettings/applications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 339
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 335
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 329
    const-string v0, "ManageApplications"

    const-string v1, "onTextChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/exsettings/applications/ManageApplications$1;->this$0:Lcom/android/exsettings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/exsettings/applications/ManageApplications;->mApplications:Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/exsettings/applications/ManageApplications$1;->this$0:Lcom/android/exsettings/applications/ManageApplications;

    iget-object v1, v1, Lcom/android/exsettings/applications/ManageApplications;->mTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exsettings/applications/ManageApplications$ApplicationsAdapter;->setFilterPrefix(Ljava/lang/String;)V

    .line 331
    return-void
.end method
