.class public final Lgds;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/CharSequence;

.field private synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lgds;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lgds;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 193
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lgds;->a:Ljava/lang/CharSequence;

    iget v2, p0, Lgds;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/CharSequence;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 194
    return-void
.end method
