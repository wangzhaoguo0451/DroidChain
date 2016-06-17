.class final Lchx;
.super Ljava/lang/Object;
.source "AccountConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcia;


# direct methods
.method constructor <init>(Lcia;)V
    .locals 0
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lchx;->a:Lcia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lchx;->a:Lcia;

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    invoke-virtual {v0}, Lcia;->a()V

    .line 755
    return-void
.end method
