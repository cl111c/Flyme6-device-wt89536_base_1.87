.class Lcom/android/exsettings/CryptKeeper$4;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/CryptKeeper;->setupUi()V
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
.field owner_info:Ljava/lang/String;

.field passwordType:I

.field password_visible:Z

.field pattern_visible:Z

.field final synthetic this$0:Lcom/android/exsettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/exsettings/CryptKeeper;)V
    .locals 1

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/CryptKeeper$4;->passwordType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 497
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/CryptKeeper$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 506
    :try_start_0
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    # invokes: Lcom/android/exsettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v4}, Lcom/android/exsettings/CryptKeeper;->access$300(Lcom/android/exsettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 507
    .local v1, "service":Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/CryptKeeper$4;->passwordType:I

    .line 508
    const-string v4, "OwnerInfo"

    invoke-interface {v1, v4}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/CryptKeeper$4;->owner_info:Ljava/lang/String;

    .line 509
    const-string v4, "0"

    const-string v5, "PatternVisible"

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/android/exsettings/CryptKeeper$4;->pattern_visible:Z

    .line 510
    const-string v4, "0"

    const-string v5, "PasswordVisible"

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/exsettings/CryptKeeper$4;->password_visible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :goto_2
    const/4 v2, 0x0

    return-object v2

    .restart local v1    # "service":Landroid/os/storage/IMountService;
    :cond_0
    move v4, v3

    .line 509
    goto :goto_0

    :cond_1
    move v2, v3

    .line 510
    goto :goto_1

    .line 511
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 497
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/CryptKeeper$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 520
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-virtual {v1}, Lcom/android/exsettings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_password"

    iget-boolean v1, p0, Lcom/android/exsettings/CryptKeeper$4;->password_visible:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 523
    iget v1, p0, Lcom/android/exsettings/CryptKeeper$4;->passwordType:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 524
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f040036

    invoke-virtual {v1, v4}, Lcom/android/exsettings/CryptKeeper;->setContentView(I)V

    .line 525
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f0c0848

    # setter for: Lcom/android/exsettings/CryptKeeper;->mStatusString:I
    invoke-static {v1, v4}, Lcom/android/exsettings/CryptKeeper;->access$1302(Lcom/android/exsettings/CryptKeeper;I)I

    .line 534
    :goto_1
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f12005d

    invoke-virtual {v1, v4}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 535
    .local v0, "status":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    # getter for: Lcom/android/exsettings/CryptKeeper;->mStatusString:I
    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->access$1300(Lcom/android/exsettings/CryptKeeper;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 541
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    # invokes: Lcom/android/exsettings/CryptKeeper;->passwordEntryInit()V
    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->access$1500(Lcom/android/exsettings/CryptKeeper;)V

    .line 543
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x1020002

    invoke-virtual {v1, v4}, Lcom/android/exsettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v4, 0x400000

    invoke-virtual {v1, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 545
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    # getter for: Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->access$100(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    # getter for: Lcom/android/exsettings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->access$100(Lcom/android/exsettings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/exsettings/CryptKeeper$4;->pattern_visible:Z

    if-nez v4, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    # getter for: Lcom/android/exsettings/CryptKeeper;->mCooldown:Z
    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->access$1600(Lcom/android/exsettings/CryptKeeper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    # invokes: Lcom/android/exsettings/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v1, v3}, Lcom/android/exsettings/CryptKeeper;->access$1400(Lcom/android/exsettings/CryptKeeper;Z)V

    .line 551
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    # invokes: Lcom/android/exsettings/CryptKeeper;->cooldown()V
    invoke-static {v1}, Lcom/android/exsettings/CryptKeeper;->access$1700(Lcom/android/exsettings/CryptKeeper;)V

    .line 554
    :cond_1
    return-void

    .end local v0    # "status":Landroid/widget/TextView;
    :cond_2
    move v1, v3

    .line 520
    goto :goto_0

    .line 526
    :cond_3
    iget v1, p0, Lcom/android/exsettings/CryptKeeper$4;->passwordType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 527
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f040034

    invoke-virtual {v1, v4}, Lcom/android/exsettings/CryptKeeper;->setContentView(I)V

    .line 528
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    # invokes: Lcom/android/exsettings/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v1, v3}, Lcom/android/exsettings/CryptKeeper;->access$1400(Lcom/android/exsettings/CryptKeeper;Z)V

    .line 529
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f0c0849

    # setter for: Lcom/android/exsettings/CryptKeeper;->mStatusString:I
    invoke-static {v1, v4}, Lcom/android/exsettings/CryptKeeper;->access$1302(Lcom/android/exsettings/CryptKeeper;I)I

    goto :goto_1

    .line 531
    :cond_4
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f040032

    invoke-virtual {v1, v4}, Lcom/android/exsettings/CryptKeeper;->setContentView(I)V

    .line 532
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$4;->this$0:Lcom/android/exsettings/CryptKeeper;

    const v4, 0x7f0c0847

    # setter for: Lcom/android/exsettings/CryptKeeper;->mStatusString:I
    invoke-static {v1, v4}, Lcom/android/exsettings/CryptKeeper;->access$1302(Lcom/android/exsettings/CryptKeeper;I)I

    goto :goto_1

    .restart local v0    # "status":Landroid/widget/TextView;
    :cond_5
    move v2, v3

    .line 546
    goto :goto_2
.end method
