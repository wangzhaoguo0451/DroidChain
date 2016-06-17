.class final Laeh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Laeg;


# direct methods
.method constructor <init>(Laeg;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laeh;->a:Laeg;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Laeh;->a:Laeg;

    invoke-static {v0}, Laeg;->a(Laeg;)Lafc;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laeh;->a:Laeg;

    invoke-static {v0}, Laeg;->a(Laeg;)Lafc;

    move-result-object v0

    .line 67
    :goto_0
    if-eqz v0, :cond_0

    .line 69
    invoke-static {v0}, Lcom/alipay/wandoujia/ra;->a(Lafc;)Lcom/alipay/wandoujia/ra;

    move-result-object v0

    .line 70
    iget-object v1, p0, Laeh;->a:Laeg;

    iget-object v2, p0, Laeh;->a:Laeg;

    new-instance v3, Ladu;

    invoke-direct {v3, v0}, Ladu;-><init>(Lcom/alipay/wandoujia/ra;)V

    invoke-virtual {v1, v2, v3}, Laeg;->a(Ljava/lang/Object;Ladu;)V

    .line 72
    :cond_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Laeh;->a:Laeg;

    iget-object v0, v0, Laez;->l:Lafc;

    goto :goto_0
.end method
