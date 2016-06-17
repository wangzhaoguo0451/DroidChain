.class public Lcom/wandoujia/jupiter/fragment/WebViewFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "WebViewFragment.java"

# interfaces
.implements Ldgb;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

.field private d:Ldfm;

.field private e:Lup;

.field private f:Lhaw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->a:I

    .line 90
    new-instance v0, Ldfk;

    invoke-direct {v0, p0}, Ldfk;-><init>(Lcom/wandoujia/jupiter/fragment/WebViewFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->e:Lup;

    .line 107
    new-instance v0, Ldfl;

    invoke-direct {v0, p0}, Ldfl;-><init>(Lcom/wandoujia/jupiter/fragment/WebViewFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->f:Lhaw;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/fragment/WebViewFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->a:I

    return p1
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/fragment/WebViewFragment;)Ldfm;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->d:Ldfm;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/fragment/WebViewFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->a:I

    return v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/fragment/WebViewFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->c:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->scrollBy(II)V

    .line 73
    return-void
.end method

.method public final a(Ldfm;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->d:Ldfm;

    .line 83
    return-void
.end method

.method public final a_()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->d:Ldfm;

    .line 88
    return-void
.end method

.method public final b_()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->a:I

    return v0
.end method

.method public final c_()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->c:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_api_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    const v0, 0x7f030185

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    iput v3, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->a:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v1, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v2, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->f:Lhaw;

    invoke-virtual {v1, v0}, Lhaw;->a(Ljava/util/List;)Z

    .line 57
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 58
    const v0, 0x7f0c0053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->c:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    .line 59
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->c:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->setLayoutManager(Luo;)V

    .line 60
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->c:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    new-instance v2, Lhbh;

    invoke-direct {v2, v1, v3, v3}, Lhbh;-><init>(III)V

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->a(Lum;)V

    .line 61
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->c:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->f:Lhaw;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->setAdapter(Luh;)V

    .line 62
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->c:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/WebViewFragment;->e:Lup;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->a(Lup;)V

    .line 63
    return-void
.end method
