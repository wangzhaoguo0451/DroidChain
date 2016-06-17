.class public final Lgdm;
.super Ljava/lang/Object;
.source "ShortcutUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lgdm;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 132
    invoke-static {}, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->values()[Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 133
    iget-object v4, p0, Lgdm;->a:Landroid/content/Context;

    #getter for: Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->title:Ljava/lang/String;
    invoke-static {v3}, Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;->access$000(Lcom/wandoujia/p4/utils/ShortcutUtil$DeprecatedShortCut;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/wandoujia/p4/utils/ShortcutUtil;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->y()V

    .line 136
    return-void
.end method
