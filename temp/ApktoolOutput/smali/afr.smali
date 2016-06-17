.class final Lafr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lafp;


# direct methods
.method constructor <init>(Lafp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lafr;->a:Lafp;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lafr;->a:Lafp;

    iget-object v1, p0, Lafr;->a:Lafp;

    .line 89
    new-instance v2, Ladu;

    .line 90
    iget-object v3, p0, Lafr;->a:Lafp;

    iget-object v3, v3, Laez;->l:Lafc;

    invoke-static {v3}, Lcom/alipay/wandoujia/ra;->a(Lafc;)Lcom/alipay/wandoujia/ra;

    move-result-object v3

    .line 89
    invoke-direct {v2, v3}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    .line 88
    invoke-virtual {v0, v1, v2}, Lafp;->a(Ljava/lang/Object;Ladu;)V

    .line 91
    return-void
.end method
