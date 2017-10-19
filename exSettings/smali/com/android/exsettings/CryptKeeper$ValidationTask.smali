.class Lcom/android/exsettings/CryptKeeper$ValidationTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/android/exsettings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/CryptKeeper;Lcom/android/exsettings/CryptKeeper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/CryptKeeper;
    .param p2, "x1"    # Lcom/android/exsettings/CryptKeeper$1;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/android/exsettings/CryptKeeper$ValidationTask;-><init>(Lcom/android/exsettings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 316
    iget-object v4, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    # invokes: Lcom/android/exsettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v4}, Lcom/android/exsettings/CryptKeeper;->access$300(Lcom/android/exsettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 318
    .local v1, "service":Landroid/os/storage/IMountService;
    :try_start_0
    const-string v4, "CryptKeeper"

    const-string v5, "Validating encryption state."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v4

    iput v4, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->state:I

    .line 320
    iget v4, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->state:I

    if-ne v4, v2, :cond_0

    .line 321
    const-string v2, "CryptKeeper"

    const-string v4, "Unexpectedly in CryptKeeper even though there is no encryption."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 330
    :goto_0
    return-object v2

    .line 324
    :cond_0
    iget-object v5, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    iget v4, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->state:I

    const/4 v6, -0x5

    if-eq v4, v6, :cond_1

    iget v4, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->state:I

    if-ne v4, v7, :cond_3

    :cond_1
    move v4, v2

    :goto_1
    # setter for: Lcom/android/exsettings/CryptKeeper;->mMdtpActivated:Z
    invoke-static {v5, v4}, Lcom/android/exsettings/CryptKeeper;->access$502(Lcom/android/exsettings/CryptKeeper;Z)Z

    .line 326
    iget v4, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->state:I

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->state:I

    if-ne v4, v7, :cond_4

    :cond_2
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :cond_3
    move v4, v3

    .line 324
    goto :goto_1

    :cond_4
    move v2, v3

    .line 326
    goto :goto_2

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CryptKeeper"

    const-string v4, "Unable to get encryption state properly"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 311
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/CryptKeeper$ValidationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x1

    .line 336
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    # setter for: Lcom/android/exsettings/CryptKeeper;->mValidationComplete:Z
    invoke-static {v1, v0}, Lcom/android/exsettings/CryptKeeper;->access$702(Lcom/android/exsettings/CryptKeeper;Z)Z

    .line 337
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    const-string v1, "CryptKeeper"

    const-string v2, "Incomplete, or corrupted encryption detected. Prompting user to wipe."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    # setter for: Lcom/android/exsettings/CryptKeeper;->mEncryptionGoneBad:Z
    invoke-static {v1, v0}, Lcom/android/exsettings/CryptKeeper;->access$802(Lcom/android/exsettings/CryptKeeper;Z)Z

    .line 340
    iget-object v1, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    iget v2, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->state:I

    const/4 v3, -0x4

    if-ne v2, v3, :cond_0

    :goto_0
    # setter for: Lcom/android/exsettings/CryptKeeper;->mCorrupt:Z
    invoke-static {v1, v0}, Lcom/android/exsettings/CryptKeeper;->access$902(Lcom/android/exsettings/CryptKeeper;Z)Z

    .line 344
    :goto_1
    iget-object v0, p0, Lcom/android/exsettings/CryptKeeper$ValidationTask;->this$0:Lcom/android/exsettings/CryptKeeper;

    # invokes: Lcom/android/exsettings/CryptKeeper;->setupUi()V
    invoke-static {v0}, Lcom/android/exsettings/CryptKeeper;->access$1000(Lcom/android/exsettings/CryptKeeper;)V

    .line 345
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 342
    :cond_1
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption state validated. Proceeding to configure UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 311
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/CryptKeeper$ValidationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
