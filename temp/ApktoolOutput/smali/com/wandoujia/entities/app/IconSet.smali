.class public Lcom/wandoujia/entities/app/IconSet;
.super Ljava/lang/Object;
.source "IconSet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static iconSize:F


# instance fields
.field private px100:Ljava/lang/String;

.field private px24:Ljava/lang/String;

.field private px256:Ljava/lang/String;

.field private px36:Ljava/lang/String;

.field private px48:Ljava/lang/String;

.field private px68:Ljava/lang/String;

.field private px78:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/high16 v0, -0x4080

    sput v0, Lcom/wandoujia/entities/app/IconSet;->iconSize:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPx256()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/entities/app/IconSet;->px256:Ljava/lang/String;

    return-object v0
.end method

.method public getPx78()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/entities/app/IconSet;->px78:Ljava/lang/String;

    return-object v0
.end method

.method public getSuitableIconUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    sget v0, Lcom/wandoujia/entities/app/IconSet;->iconSize:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/entities/R$dimen;->homepage_cover_panel_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/wandoujia/entities/app/IconSet;->iconSize:F

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/entities/app/IconSet;->px256:Ljava/lang/String;

    .line 46
    sget v1, Lcom/wandoujia/entities/app/IconSet;->iconSize:F

    const/high16 v2, 0x4380

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 92
    :cond_1
    :goto_0
    return-object v0

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/wandoujia/entities/app/IconSet;->px100:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 51
    sget v1, Lcom/wandoujia/entities/app/IconSet;->iconSize:F

    const/high16 v2, 0x42c8

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/wandoujia/entities/app/IconSet;->px100:Ljava/lang/String;

    .line 57
    :cond_3
    iget-object v1, p0, Lcom/wandoujia/entities/app/IconSet;->px78:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 58
    sget v1, Lcom/wandoujia/entities/app/IconSet;->iconSize:F

    const/high16 v2, 0x429c

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/wandoujia/entities/app/IconSet;->px78:Ljava/lang/String;

    .line 64
    :cond_4
    iget-object v1, p0, Lcom/wandoujia/entities/app/IconSet;->px68:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 65
    sget v1, Lcom/wandoujia/entities/app/IconSet;->iconSize:F

    const/high16 v2, 0x4288

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/wandoujia/entities/app/IconSet;->px68:Ljava/lang/String;

    .line 71
    :cond_5
    iget-object v1, p0, Lcom/wandoujia/entities/app/IconSet;->px48:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 72
    sget v1, Lcom/wandoujia/entities/app/IconSet;->iconSize:F

    const/high16 v2, 0x4240

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/wandoujia/entities/app/IconSet;->px48:Ljava/lang/String;

    .line 78
    :cond_6
    iget-object v1, p0, Lcom/wandoujia/entities/app/IconSet;->px36:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 79
    sget v1, Lcom/wandoujia/entities/app/IconSet;->iconSize:F

    const/high16 v2, 0x4210

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/wandoujia/entities/app/IconSet;->px48:Ljava/lang/String;

    .line 85
    :cond_7
    iget-object v1, p0, Lcom/wandoujia/entities/app/IconSet;->px24:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    sget v1, Lcom/wandoujia/entities/app/IconSet;->iconSize:F

    const/high16 v2, 0x41c0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/wandoujia/entities/app/IconSet;->px24:Ljava/lang/String;

    goto :goto_0
.end method
