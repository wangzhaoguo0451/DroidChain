.class final Lafh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lafg;


# direct methods
.method constructor <init>(Lafg;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lafh;->a:Lafg;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lafh;->a:Lafg;

    invoke-static {v0}, Lafg;->a(Lafg;)Lafc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lafh;->a:Lafg;

    invoke-static {v0}, Lafg;->a(Lafg;)Lafc;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/wandoujia/ra;->a(Lafc;)Lcom/alipay/wandoujia/ra;

    move-result-object v0

    .line 120
    :goto_0
    iget-object v1, p0, Lafh;->a:Lafg;

    iget-object v2, p0, Lafh;->a:Lafg;

    new-instance v3, Ladu;

    invoke-direct {v3, v0}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    invoke-virtual {v1, v2, v3}, Lafg;->a(Ljava/lang/Object;Ladu;)V

    .line 121
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lafh;->a:Lafg;

    iget-object v0, v0, Laez;->l:Lafc;

    invoke-static {v0}, Lcom/alipay/wandoujia/ra;->a(Lafc;)Lcom/alipay/wandoujia/ra;

    move-result-object v0

    goto :goto_0
.end method
