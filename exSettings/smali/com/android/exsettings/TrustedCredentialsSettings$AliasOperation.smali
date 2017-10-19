.class Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasOperation"
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
.field private final mCertHolder:Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

.field final synthetic this$0:Lcom/android/exsettings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p2, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 763
    iput-object p2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .line 764
    # setter for: Lcom/android/exsettings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;
    invoke-static {p1, p0}, Lcom/android/exsettings/TrustedCredentialsSettings;->access$3502(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;)Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;

    .line 765
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;Lcom/android/exsettings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;
    .param p3, "x2"    # Lcom/android/exsettings/TrustedCredentialsSettings$1;

    .prologue
    .line 759
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 770
    :try_start_0
    iget-object v4, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/exsettings/TrustedCredentialsSettings;->access$2000(Lcom/android/exsettings/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    iget v5, v5, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    .line 772
    .local v2, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 773
    .local v3, "service":Landroid/security/IKeyChainService;
    iget-object v4, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {v4}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 774
    iget-object v4, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mX509Cert:Ljava/security/cert/X509Certificate;
    invoke-static {v4}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->access$3600(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 775
    .local v0, "bytes":[B
    invoke-interface {v3, v0}, Landroid/security/IKeyChainService;->installCaCertificate([B)V

    .line 776
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 784
    .end local v0    # "bytes":[B
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v3    # "service":Landroid/security/IKeyChainService;
    :goto_0
    return-object v4

    .line 778
    .restart local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v3    # "service":Landroid/security/IKeyChainService;
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->access$3400(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    goto :goto_0

    .line 780
    .end local v2    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v3    # "service":Landroid/security/IKeyChainService;
    :catch_0
    move-exception v1

    .line 782
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const-string v4, "TrustedCredentialsSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while toggling alias "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->access$3400(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 780
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 759
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "ok"    # Ljava/lang/Boolean;

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    invoke-static {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->mCertHolder:Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    # invokes: Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->postOperationUpdate(ZLcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1, v2}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->access$3700(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;ZLcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V

    .line 791
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/exsettings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;
    invoke-static {v0, v1}, Lcom/android/exsettings/TrustedCredentialsSettings;->access$3502(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;)Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;

    .line 792
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 759
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$AliasOperation;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
