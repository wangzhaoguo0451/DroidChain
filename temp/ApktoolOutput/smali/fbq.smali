.class final Lfbq;
.super Ljava/lang/Object;
.source "CampaignUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

.field private synthetic c:Lfyz;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;Lfyz;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lfbq;->a:Landroid/content/Context;

    iput-object p2, p0, Lfbq;->b:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    iput-object p3, p0, Lfbq;->c:Lfyz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lfbq;->a:Landroid/content/Context;

    iget-object v1, p0, Lfbq;->b:Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;

    iget-object v2, p0, Lfbq;->c:Lfyz;

    invoke-static {v0, v1, v2}, Lgdk;->a(Landroid/content/Context;Lcom/wandoujia/p4/search/utils/SearchConst$ShareType;Lfyz;)V

    .line 99
    return-void
.end method
