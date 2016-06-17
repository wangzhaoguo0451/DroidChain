.class final Lchy;
.super Ljava/lang/Object;
.source "AccountConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcia;


# direct methods
.method constructor <init>(Lcia;)V
    .locals 0
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lchy;->a:Lcia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 762
    invoke-static {}, Lchv;->E()V

    .line 763
    invoke-static {}, Lchv;->F()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lchz;

    invoke-direct {v1, p0}, Lchz;-><init>(Lchy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 769
    return-void
.end method
