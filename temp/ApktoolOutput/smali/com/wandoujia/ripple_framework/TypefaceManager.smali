.class public final Lcom/wandoujia/ripple_framework/TypefaceManager;
.super Ljava/lang/Object;
.source "TypefaceManager.java"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhav;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/TypefaceManager;->b:Landroid/content/Context;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wandoujia/ripple_framework/TypefaceManager;->a:Ljava/util/Map;

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;)Landroid/graphics/Typeface;
    .locals 2
    .parameter

    .prologue
    .line 59
    sget-object v0, Lcom/wandoujia/ripple_framework/TypefaceManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 60
    if-nez v0, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/TypefaceManager;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lhav;->a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/TypefaceManager$FONT;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/wandoujia/ripple_framework/TypefaceManager;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
