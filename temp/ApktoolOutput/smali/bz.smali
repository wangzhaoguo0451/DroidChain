.class public final Lbz;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# static fields
.field private static final a:Lca;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 87
    new-instance v0, Lcc;

    invoke-direct {v0}, Lcc;-><init>()V

    sput-object v0, Lbz;->a:Lca;

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 89
    new-instance v0, Lcb;

    invoke-direct {v0}, Lcb;-><init>()V

    sput-object v0, Lbz;->a:Lca;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Lca;

    invoke-direct {v0}, Lca;-><init>()V

    sput-object v0, Lbz;->a:Lca;

    goto :goto_0
.end method

.method public static a(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 221
    sget-object v0, Lbz;->a:Lca;

    invoke-virtual {v0, p0}, Lca;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
