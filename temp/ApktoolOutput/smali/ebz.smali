.class final Lebz;
.super Ljava/lang/Object;
.source "MarioShortcutUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lebx;


# direct methods
.method constructor <init>(Lebx;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lebz;->c:Lebx;

    iput-object p2, p0, Lebz;->a:Landroid/content/Context;

    iput-object p3, p0, Lebz;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Leca;

    invoke-direct {v0, p0}, Leca;-><init>(Lebz;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method
