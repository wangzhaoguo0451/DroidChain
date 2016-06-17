.class final Laoj;
.super Ljava/lang/Object;
.source "OkHttpNetworkFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Laoi;


# direct methods
.method constructor <init>(Laoi;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Laoj;->a:Laoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Laoj;->a:Laoi;

    iget-object v0, v0, Laoi;->a:Lbws;

    invoke-virtual {v0}, Lbws;->a()V

    .line 100
    return-void
.end method
