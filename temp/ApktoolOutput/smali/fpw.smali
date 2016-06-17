.class final Lfpw;
.super Ljava/lang/Object;
.source "ServeModeController.java"

# interfaces
.implements Lefm;


# instance fields
.field private synthetic a:Lfpv;


# direct methods
.method constructor <init>(Lfpv;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lfpw;->a:Lfpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lfpw;->a:Lfpv;

    invoke-static {v0}, Lfpv;->a(Lfpv;)V

    .line 41
    iget-object v0, p0, Lfpw;->a:Lfpv;

    new-instance v1, Lfpx;

    invoke-direct {v1}, Lfpx;-><init>()V

    invoke-virtual {v0}, Lfpv;->b()V

    .line 47
    return-void
.end method
