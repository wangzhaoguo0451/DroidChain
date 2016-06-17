.class final Lchz;
.super Ljava/lang/Object;
.source "AccountConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lchy;


# direct methods
.method constructor <init>(Lchy;)V
    .locals 0
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lchz;->a:Lchy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lchz;->a:Lchy;

    iget-object v0, v0, Lchy;->a:Lcia;

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    invoke-virtual {v0}, Lcia;->a()V

    .line 767
    return-void
.end method
