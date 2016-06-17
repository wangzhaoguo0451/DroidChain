.class public final Lgdb;
.super Ljava/lang/Object;
.source "EasterEggsUtils.java"

# interfaces
.implements Lgxu;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lgdb;->a:Landroid/content/Context;

    iput-object p2, p0, Lgdb;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lgdb;->a:Landroid/content/Context;

    iget-object v1, p0, Lgdb;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ld;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    return-void
.end method
