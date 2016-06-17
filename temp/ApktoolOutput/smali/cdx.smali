.class public final Lcdx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/pboc/engine/a;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/views/j;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/j;)V
    .locals 0

    iput-object p1, p0, Lcdx;->a:Lcom/unionpay/mpay/views/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/pboctransaction/model/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcdx;->a:Lcom/unionpay/mpay/views/j;

    invoke-static {v0}, Lcom/unionpay/mpay/views/j;->a(Lcom/unionpay/mpay/views/j;)I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcdx;->a:Lcom/unionpay/mpay/views/j;

    iget-object v0, v0, Lcom/unionpay/mpay/views/j;->l:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcdx;->a:Lcom/unionpay/mpay/views/j;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/unionpay/mpay/views/j;->l:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcdx;->a:Lcom/unionpay/mpay/views/j;

    iget-object v0, v0, Lcom/unionpay/mpay/views/j;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcdx;->a:Lcom/unionpay/mpay/views/j;

    invoke-static {v0}, Lcom/unionpay/mpay/views/j;->b(Lcom/unionpay/mpay/views/j;)V

    return-void
.end method
