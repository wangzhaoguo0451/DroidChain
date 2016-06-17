.class public final Lgca;
.super Ljava/lang/Object;
.source "SubscribeRefreshFlagChecker.java"

# interfaces
.implements Lgcj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lgcd;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, Lgcd;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->a(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public final b(Lgcd;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    return-void
.end method

.method public final c(Lgcd;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-virtual {p1}, Lgcd;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->a(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public final d(Lgcd;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    return-void
.end method
