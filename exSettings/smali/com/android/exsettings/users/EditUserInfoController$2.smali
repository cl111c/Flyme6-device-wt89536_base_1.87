.class Lcom/android/exsettings/users/EditUserInfoController$2;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/users/EditUserInfoController;

.field final synthetic val$callback:Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;

.field final synthetic val$currentUserIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic val$currentUserName:Ljava/lang/CharSequence;

.field final synthetic val$fragment:Landroid/app/Fragment;

.field final synthetic val$userNameView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/exsettings/users/EditUserInfoController;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;Landroid/graphics/drawable/Drawable;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->val$userNameView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->val$currentUserName:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->val$callback:Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;

    iput-object p5, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->val$currentUserIcon:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->val$fragment:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 138
    const/4 v3, -0x1

    if-ne p2, v3, :cond_5

    .line 140
    iget-object v3, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->val$userNameView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 141
    .local v2, "userName":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 142
    iget-object v3, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->val$currentUserName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->val$currentUserName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->val$callback:Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->val$callback:Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;->onLabelChanged(Ljava/lang/CharSequence;)V

    .line 147
    :cond_1
    iget-object v3, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    # getter for: Lcom/android/exsettings/users/EditUserInfoController;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/exsettings/users/EditUserInfoController;->access$100(Lcom/android/exsettings/users/EditUserInfoController;)Landroid/os/UserManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    # getter for: Lcom/android/exsettings/users/EditUserInfoController;->mUser:Landroid/os/UserHandle;
    invoke-static {v4}, Lcom/android/exsettings/users/EditUserInfoController;->access$000(Lcom/android/exsettings/users/EditUserInfoController;)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 152
    :cond_2
    iget-object v3, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    # getter for: Lcom/android/exsettings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/exsettings/users/EditUserPhotoController;
    invoke-static {v3}, Lcom/android/exsettings/users/EditUserInfoController;->access$200(Lcom/android/exsettings/users/EditUserInfoController;)Lcom/android/exsettings/users/EditUserPhotoController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exsettings/users/EditUserPhotoController;->getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 153
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    # getter for: Lcom/android/exsettings/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/exsettings/users/EditUserPhotoController;
    invoke-static {v3}, Lcom/android/exsettings/users/EditUserInfoController;->access$200(Lcom/android/exsettings/users/EditUserInfoController;)Lcom/android/exsettings/users/EditUserPhotoController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/exsettings/users/EditUserPhotoController;->getNewUserPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->val$currentUserIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 156
    iget-object v3, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->val$callback:Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;

    if-eqz v3, :cond_3

    .line 157
    iget-object v3, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->val$callback:Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;

    invoke-interface {v3, v1}, Lcom/android/exsettings/users/EditUserInfoController$OnContentChangedCallback;->onPhotoChanged(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_3
    new-instance v4, Lcom/android/exsettings/users/EditUserInfoController$2$1;

    invoke-direct {v4, p0}, Lcom/android/exsettings/users/EditUserInfoController$2$1;-><init>(Lcom/android/exsettings/users/EditUserInfoController$2;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v3}, Lcom/android/exsettings/users/EditUserInfoController$2$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 168
    :cond_4
    iget-object v3, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->val$fragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->removeDialog(I)V

    .line 171
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "userName":Ljava/lang/CharSequence;
    :cond_5
    iget-object v3, p0, Lcom/android/exsettings/users/EditUserInfoController$2;->this$0:Lcom/android/exsettings/users/EditUserInfoController;

    invoke-virtual {v3}, Lcom/android/exsettings/users/EditUserInfoController;->clear()V

    .line 172
    return-void
.end method
