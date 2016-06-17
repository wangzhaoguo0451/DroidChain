.class final Leox;
.super Ljava/lang/Object;
.source "RecyclerViewLogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/view/View;

.field b:J

.field private synthetic c:Leow;


# direct methods
.method constructor <init>(Leow;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Leox;->c:Leow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Leox;->c:Leow;

    invoke-static {v0}, Leow;->a(Leow;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Leox;->c:Leow;

    invoke-static {v0}, Leow;->b(Leow;)Ljava/util/List;

    move-result-object v0

    iget-wide v2, p0, Leox;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iget-object v1, p0, Leox;->c:Leow;

    iget-object v2, p0, Leox;->a:Landroid/view/View;

    invoke-static {v1, v2, v0}, Leow;->a(Leow;Landroid/view/View;Ljava/util/List;)V

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 131
    invoke-static {}, Leny;->b()Leny;

    move-result-object v2

    invoke-virtual {v2, v0}, Leny;->a(Landroid/view/View;)V

    goto :goto_1

    .line 133
    :cond_2
    iget-object v0, p0, Leox;->c:Leow;

    invoke-static {v0}, Leow;->b(Leow;)Ljava/util/List;

    move-result-object v0

    iget-wide v2, p0, Leox;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
