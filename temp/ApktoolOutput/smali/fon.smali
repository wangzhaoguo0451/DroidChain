.class public final Lfon;
.super Ljava/lang/Object;
.source "CommunityPopItemsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:[Ljava/lang/String;

.field private synthetic b:Ljava/util/Map;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lfon;->a:[Ljava/lang/String;

    iput-object p2, p0, Lfon;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lfon;->a:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 36
    iget-object v1, p0, Lfon;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/mvc/Action;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Lcom/wandoujia/mvc/Action;->execute()V

    .line 40
    :cond_0
    return-void
.end method
