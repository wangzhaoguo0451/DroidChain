.class final Ldln;
.super Lhhl;
.source "DetailCommentPresenter.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/api/proto/AppDetail;


# direct methods
.method constructor <init>(Lcom/wandoujia/api/proto/AppDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Ldln;->a:Lcom/wandoujia/api/proto/AppDetail;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Ldln;->a:Lcom/wandoujia/api/proto/AppDetail;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ldll;->a(Lcom/wandoujia/api/proto/AppDetail;Landroid/content/Context;Z)V

    .line 80
    const/4 v0, 0x0

    return v0
.end method
