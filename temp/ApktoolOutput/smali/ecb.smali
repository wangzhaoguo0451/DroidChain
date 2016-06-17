.class final Lecb;
.super Ljava/lang/Object;
.source "MarioShortcutUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lecb;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lecb;->a:Landroid/content/Context;

    invoke-static {v0}, Lebw;->c(Landroid/content/Context;)V

    .line 139
    return-void
.end method
