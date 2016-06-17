.class final Lefk;
.super Ljava/lang/Object;
.source "StartDownloadAppAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lcom/wandoujia/entities/app/ApkObbInfo;

.field private synthetic d:Lehp;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/wandoujia/entities/app/ApkObbInfo;Lehp;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lefk;->a:Ljava/lang/String;

    iput-object p2, p0, Lefk;->b:Ljava/util/List;

    iput-object p3, p0, Lefk;->c:Lcom/wandoujia/entities/app/ApkObbInfo;

    iput-object p4, p0, Lefk;->d:Lehp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lefk;->a:Ljava/lang/String;

    iget-object v1, p0, Lefk;->b:Ljava/util/List;

    iget-object v2, p0, Lefk;->c:Lcom/wandoujia/entities/app/ApkObbInfo;

    invoke-virtual {v2}, Lcom/wandoujia/entities/app/ApkObbInfo;->getCpuType()I

    move-result v2

    iget-object v3, p0, Lefk;->d:Lehp;

    invoke-static {v0, v1, v2, v3}, Lehi;->a(Ljava/lang/String;Ljava/util/List;ILehp;)V

    .line 249
    return-void
.end method
