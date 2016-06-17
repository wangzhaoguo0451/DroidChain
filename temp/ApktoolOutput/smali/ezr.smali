.class public final Lezr;
.super Ljava/lang/Object;
.source "ALHomeFragment.java"

# interfaces
.implements Lfad;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lezr;->a:Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lezr;->a:Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;

    invoke-static {}, Ld;->y()Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;->a(Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;Lcom/wandoujia/p4/app_launcher/model/ALSuggestion;)V

    .line 133
    return-void
.end method
