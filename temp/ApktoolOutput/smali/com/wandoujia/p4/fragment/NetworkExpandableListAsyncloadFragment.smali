.class public abstract Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;
.super Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;
.source "NetworkExpandableListAsyncloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/wandoujia/mvc/BaseModel;",
        "T::",
        "Lcom/wandoujia/mvc/BaseModel;",
        ">",
        "Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;-><init>()V

    .line 44
    new-instance v0, Lftg;

    invoke-direct {v0, p0}, Lftg;-><init>(Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;)V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;)V
    .locals 4
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/wandoujia/p4/tips/TipsType;

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/p4/tips/TipsType;->LOADING:Lcom/wandoujia/p4/tips/TipsType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;)Landroid/os/Parcelable;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->a:Landroid/os/Parcelable;

    return-object v0
.end method

.method public static synthetic b()Lcom/wandoujia/p4/views/FetchMoreFooterView;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;)Landroid/os/Parcelable;
    .locals 1
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->a:Landroid/os/Parcelable;

    return-object v0
.end method

.method public static synthetic c()Leuo;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic d()Leum;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic e()Lcom/wandoujia/p4/views/ContentExpandableListView;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic f()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-virtual {v0}, Lfst;->b()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    if-eqz p1, :cond_0

    .line 104
    const-string v0, "phoenix.intent.extra.LIST_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/fragment/NetworkExpandableListAsyncloadFragment;->a:Landroid/os/Parcelable;

    .line 106
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    return-void
.end method
