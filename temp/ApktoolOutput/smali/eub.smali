.class public final Leub;
.super Ljava/lang/Object;
.source "OpenScreenshotViewAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Leub;->a:Landroid/app/Activity;

    .line 35
    iput-object p2, p0, Leub;->b:Ljava/util/List;

    .line 36
    iput-object p3, p0, Leub;->c:Ljava/util/List;

    .line 37
    iput p4, p0, Leub;->d:I

    .line 38
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Leub;->a:Landroid/app/Activity;

    iget-object v1, p0, Leub;->b:Ljava/util/List;

    iget-object v2, p0, Leub;->c:Ljava/util/List;

    iget v3, p0, Leub;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/p4/activity/ScreenshotViewActivity;->a(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;I)V

    .line 63
    return-void
.end method
