.class public final Ldrp;
.super Lti;
.source "SearchQueryHistoryFragment.java"


# instance fields
.field private synthetic b:Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Ldrp;->b:Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;

    invoke-direct {p0}, Lti;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Ldrp;->b:Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->e(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;)I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
