.class public final Legp;
.super Ljava/lang/Object;
.source "LauncherPage.java"


# static fields
.field public static final a:I

.field private static g:I


# instance fields
.field final b:I

.field c:I

.field d:Legh;

.field e:Landroid/view/View;

.field f:Lcom/wandoujia/launcher_base/launcher/view/LauncherGridView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/wandoujia/launcher_base/R$id;->launcher_page_key:I

    sput v0, Legp;->a:I

    .line 18
    const/4 v0, 0x0

    sput v0, Legp;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget v0, Legp;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Legp;->g:I

    .line 29
    sget v0, Legp;->g:I

    iput v0, p0, Legp;->b:I

    .line 30
    new-instance v0, Legh;

    invoke-direct {v0}, Legh;-><init>()V

    iput-object v0, p0, Legp;->d:Legh;

    .line 31
    return-void
.end method
