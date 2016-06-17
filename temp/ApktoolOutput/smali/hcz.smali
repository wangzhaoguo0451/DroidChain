.class public final Lhcz;
.super Ljava/lang/Object;
.source "DBOperator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhde;

.field private synthetic b:Lhcp;


# direct methods
.method public constructor <init>(Lhcp;Lhde;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lhcz;->b:Lhcp;

    iput-object p2, p0, Lhcz;->a:Lhde;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lhcz;->b:Lhcp;

    invoke-static {v0}, Lhcp;->b(Lhcp;)Lhdf;

    move-result-object v0

    invoke-virtual {v0}, Lhdf;->a()Ljava/util/List;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lhcz;->b:Lhcp;

    invoke-static {v1}, Lhcp;->d(Lhcp;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lhda;

    invoke-direct {v2, p0, v0}, Lhda;-><init>(Lhcz;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method
