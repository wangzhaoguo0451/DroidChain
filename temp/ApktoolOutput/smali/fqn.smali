.class public final Lfqn;
.super Ljava/lang/Object;
.source "DetailUtils.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    sput v0, Lfqn;->a:I

    .line 19
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 27
    sget v0, Lfqn;->a:I

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
