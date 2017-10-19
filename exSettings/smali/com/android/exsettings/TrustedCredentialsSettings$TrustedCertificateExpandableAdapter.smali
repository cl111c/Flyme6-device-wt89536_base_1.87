.class Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateExpandableAdapter"
.end annotation


# instance fields
.field private mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/android/exsettings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)V
    .locals 2
    .param p2, "tab"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 297
    new-instance v0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/android/exsettings/TrustedCredentialsSettings$1;)V

    iput-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    .line 298
    invoke-virtual {p0}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->load()V

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Lcom/android/exsettings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    .param p3, "x2"    # Lcom/android/exsettings/TrustedCredentialsSettings$1;

    .prologue
    .line 292
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method


# virtual methods
.method public getChild(II)Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 330
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/android/exsettings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->access$1400(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    # invokes: Lcom/android/exsettings/TrustedCredentialsSettings;->getViewForCertificate(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    invoke-static {v0, v1, v2, p4, p5}, Lcom/android/exsettings/TrustedCredentialsSettings;->access$1500(Lcom/android/exsettings/TrustedCredentialsSettings;Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;Lcom/android/exsettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 311
    .local v0, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 314
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Landroid/os/UserHandle;
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 318
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->access$1200(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 339
    if-nez p3, :cond_0

    .line 340
    iget-object v4, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    invoke-virtual {v4}, Lcom/android/exsettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 342
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v0, p4}, Lcom/android/exsettings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 345
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x1020016

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 346
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 347
    .local v1, "profile":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->this$0:Lcom/android/exsettings/TrustedCredentialsSettings;

    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/exsettings/TrustedCredentialsSettings;->access$1300(Lcom/android/exsettings/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 348
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    const v4, 0x7f0c0381

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 353
    :goto_0
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 355
    return-object p3

    .line 351
    :cond_1
    const v4, 0x7f0c0380

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getListViewId(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p1, "tab"    # Lcom/android/exsettings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 373
    # getter for: Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->mExpandableList:I
    invoke-static {p1}, Lcom/android/exsettings/TrustedCredentialsSettings$Tab;->access$600(Lcom/android/exsettings/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 369
    new-instance v0, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 370
    return-void
.end method

.method public remove(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "certHolder"    # Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/exsettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->mData:Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lcom/android/exsettings/TrustedCredentialsSettings$AdapterData;->remove(Lcom/android/exsettings/TrustedCredentialsSettings$CertHolder;)V

    .line 303
    return-void
.end method
