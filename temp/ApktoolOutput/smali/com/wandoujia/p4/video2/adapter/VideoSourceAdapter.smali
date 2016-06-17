.class public final Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoSourceAdapter.java"


# instance fields
.field private a:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lgfq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 81
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;)Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->a:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;)Lgfq;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->c:Lgfq;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;Ljava/util/List;Lgfq;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;",
            ">;",
            "Lgfq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    iput-object p1, p0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->a:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

    .line 23
    iput-object p2, p0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->b:Ljava/util/List;

    .line 24
    iput-object p3, p0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->c:Lgfq;

    .line 25
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->notifyDataSetChanged()V

    .line 26
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    if-eqz p2, :cond_0

    .line 47
    check-cast p2, Lcom/wandoujia/p4/video2/view/VideoSourceItem;

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

    .line 52
    invoke-virtual {p2, v0}, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->setData(Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;)V

    .line 53
    new-instance v1, Lgfp;

    invoke-direct {v1, p0, v0}, Lgfp;-><init>(Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;)V

    invoke-virtual {p2, v1}, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v1, p0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->a:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter;->a:Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;

    iget-object v1, v1, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;->source:Ljava/lang/String;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/adapter/VideoSourceAdapter$Row;->source:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->setSelected(Z)V

    .line 64
    return-object p2

    .line 49
    :cond_0
    invoke-static {p3}, Lcom/wandoujia/p4/video2/view/VideoSourceItem;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/view/VideoSourceItem;

    move-result-object p2

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
