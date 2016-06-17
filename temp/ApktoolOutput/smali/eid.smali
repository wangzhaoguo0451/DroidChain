.class public final Leid;
.super Ljava/lang/Object;
.source "ZipManager.java"

# interfaces
.implements Leif;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Leid;->a:Ljava/lang/String;

    iput-object p2, p0, Leid;->b:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Leij;)V
    .locals 2
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Leid;->a:Ljava/lang/String;

    iget-object v1, p0, Leid;->b:Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;

    invoke-interface {p1, v0, v1}, Leij;->a(Ljava/lang/String;Lcom/wandoujia/launcher_base/utils/ZipManager$ZipStatus;)V

    .line 253
    return-void
.end method
