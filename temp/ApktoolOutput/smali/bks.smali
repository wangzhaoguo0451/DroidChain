.class public final Lbks;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbko;

.field private synthetic b:Lbkr;


# direct methods
.method public constructor <init>(Lbkr;Lbko;)V
    .locals 0

    iput-object p1, p0, Lbks;->b:Lbkr;

    iput-object p2, p0, Lbks;->a:Lbko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbks;->a:Lbko;

    iget-object v0, v0, Lbko;->a:Lbkq;

    iget-object v1, p0, Lbks;->a:Lbko;

    invoke-virtual {v0, v1}, Lbkq;->a(Lbko;)V

    iget-object v0, p0, Lbks;->b:Lbkr;

    invoke-static {v0}, Lbkr;->a(Lbkr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbks;->a:Lbko;

    invoke-static {v0}, Lbkr;->a(Lbko;)V

    return-void
.end method
